/*
  Warnings:

  - You are about to drop the column `category_id` on the `Product` table. All the data in the column will be lost.
  - Added the required column `value` to the `Color` table without a default value. This is not possible if the table is not empty.
  - Added the required column `category_id` to the `Series` table without a default value. This is not possible if the table is not empty.
  - Added the required column `value` to the `Status` table without a default value. This is not possible if the table is not empty.
  - Added the required column `value` to the `Storage` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "Product" DROP CONSTRAINT "Product_category_id_fkey";

-- AlterTable
ALTER TABLE "Color" ADD COLUMN     "value" TEXT NOT NULL;

-- AlterTable
ALTER TABLE "Product" DROP COLUMN "category_id",
ALTER COLUMN "new_price" DROP NOT NULL;

-- AlterTable
ALTER TABLE "Series" ADD COLUMN     "category_id" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "Status" ADD COLUMN     "value" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "Storage" ADD COLUMN     "value" INTEGER NOT NULL;

-- AddForeignKey
ALTER TABLE "Series" ADD CONSTRAINT "Series_category_id_fkey" FOREIGN KEY ("category_id") REFERENCES "Category"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
