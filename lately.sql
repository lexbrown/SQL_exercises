CREATE TABLE states (
    `date` Date DEFAULT getdate(),
    abbs Float64,
    cut String,
    color String,
    clarity String,
    depth Float64,
    `table` Float64,
    price Int64,
    x Float64,
    y Float64,
    z Float64
) ENGINE = MergeTree(date, (`carat`), 8067);
