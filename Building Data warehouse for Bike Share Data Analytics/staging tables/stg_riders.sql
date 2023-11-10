IF NOT EXISTS (SELECT * FROM sys.external_file_formats WHERE name = 'SynapseDelimitedTextFormat') 
	CREATE EXTERNAL FILE FORMAT [SynapseDelimitedTextFormat] 
	WITH ( FORMAT_TYPE = DELIMITEDTEXT ,
	       FORMAT_OPTIONS (
			 FIELD_TERMINATOR = ',',
			 USE_TYPE_DEFAULT = FALSE
			))
GO

IF NOT EXISTS (SELECT * FROM sys.external_data_sources WHERE name = 'rayfilesystem_rayworkspace_dfs_core_windows_net') 
	CREATE EXTERNAL DATA SOURCE [rayfilesystem_rayworkspace_dfs_core_windows_net] 
	WITH (
		LOCATION = 'abfss://rayfilesystem@rayworkspace.dfs.core.windows.net' 
	)
GO

CREATE EXTERNAL TABLE dbo.stg_riders (
	[rider_id] bigint,
	[first] nvarchar(4000),
	[last] nvarchar(4000),
	[address] nvarchar(4000),
	[birthday] nvarchar(50),
	[account_start_date] nvarchar(50),
	[account_end_date] nvarchar(50),
	[is_member] bit
	)
	WITH (
	LOCATION = 'riders.csv',
	DATA_SOURCE = [rayfilesystem_rayworkspace_dfs_core_windows_net],
	FILE_FORMAT = [SynapseDelimitedTextFormat]
	)
GO


SELECT TOP 100 * FROM dbo.stg_riders