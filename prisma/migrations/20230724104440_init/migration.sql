/*
  Warnings:

  - The primary key for the `Color` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `color_id` on the `Color` table. All the data in the column will be lost.
  - The primary key for the `Storage` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `storage_id` on the `Storage` table. All the data in the column will be lost.
  - Added the required column `category_id` to the `Product` table without a default value. This is not possible if the table is not empty.
  - Added the required column `color_id` to the `Product` table without a default value. This is not possible if the table is not empty.
  - Added the required column `series_id` to the `Product` table without a default value. This is not possible if the table is not empty.
  - Added the required column `status_id` to the `Product` table without a default value. This is not possible if the table is not empty.
  - Added the required column `storage_id` to the `Product` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "Color" DROP CONSTRAINT "Color_color_id_fkey";

-- DropForeignKey
ALTER TABLE "Storage" DROP CONSTRAINT "Storage_storage_id_fkey";

-- AlterTable
ALTER TABLE "Color" DROP CONSTRAINT "Color_pkey",
DROP COLUMN "color_id",
ADD COLUMN     "id" SERIAL NOT NULL,
ADD CONSTRAINT "Color_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "Product" ADD COLUMN     "category_id" INTEGER NOT NULL,
ADD COLUMN     "color_id" INTEGER NOT NULL,
ADD COLUMN     "series_id" INTEGER NOT NULL,
ADD COLUMN     "status_id" INTEGER NOT NULL,
ADD COLUMN     "storage_id" INTEGER NOT NULL,
ALTER COLUMN "old_price" DROP NOT NULL;

-- AlterTable
ALTER TABLE "Storage" DROP CONSTRAINT "Storage_pkey",
DROP COLUMN "storage_id",
ADD COLUMN     "id" SERIAL NOT NULL,
ADD CONSTRAINT "Storage_pkey" PRIMARY KEY ("id");

-- CreateTable
CREATE TABLE "Status" (
    "id" SERIAL NOT NULL,
    "status" TEXT NOT NULL,

    CONSTRAINT "Status_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Category" (
    "id" SERIAL NOT NULL,
    "category" TEXT NOT NULL,

    CONSTRAINT "Category_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Series" (
    "id" SERIAL NOT NULL,
    "series" TEXT NOT NULL,

    CONSTRAINT "Series_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "Product" ADD CONSTRAINT "Product_category_id_fkey" FOREIGN KEY ("category_id") REFERENCES "Category"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Product" ADD CONSTRAINT "Product_series_id_fkey" FOREIGN KEY ("series_id") REFERENCES "Series"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Product" ADD CONSTRAINT "Product_color_id_fkey" FOREIGN KEY ("color_id") REFERENCES "Color"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Product" ADD CONSTRAINT "Product_storage_id_fkey" FOREIGN KEY ("storage_id") REFERENCES "Storage"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Product" ADD CONSTRAINT "Product_status_id_fkey" FOREIGN KEY ("status_id") REFERENCES "Status"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
