using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace Aula14.Migrations
{
    public partial class UserIdInAdresses : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Addresses_user_UserId",
                table: "Addresses");

            migrationBuilder.AlterColumn<int>(
                name: "UserId",
                table: "Addresses",
                type: "integer",
                nullable: false,
                defaultValue: 0,
                oldClrType: typeof(int),
                oldType: "integer",
                oldNullable: true);

            migrationBuilder.AddForeignKey(
                name: "FK_Addresses_user_UserId",
                table: "Addresses",
                column: "UserId",
                principalTable: "user",
                principalColumn: "UserId",
                onDelete: ReferentialAction.Cascade);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Addresses_user_UserId",
                table: "Addresses");

            migrationBuilder.AlterColumn<int>(
                name: "UserId",
                table: "Addresses",
                type: "integer",
                nullable: true,
                oldClrType: typeof(int),
                oldType: "integer");

            migrationBuilder.AddForeignKey(
                name: "FK_Addresses_user_UserId",
                table: "Addresses",
                column: "UserId",
                principalTable: "user",
                principalColumn: "UserId");
        }
    }
}
