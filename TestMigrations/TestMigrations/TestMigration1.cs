using FluentMigrator;
using System;

namespace TestMigrations
{
    [Migration(1)]
    public class TestMigration1 : Migration
    {
        public override void Down()
        {
            throw new NotImplementedException();
        }

        public override void Up()
        {
            if (!Schema.Table("TestTable1").Exists())
            {
                Create.Table("TestTable1")
                    .WithColumn("Id").AsGuid()
                    .WithColumn("Name").AsString(200);
            }
        }
    }
}
