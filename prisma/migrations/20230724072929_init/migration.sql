/*
  Warnings:

  - The primary key for the `Color` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `id` on the `Color` table. All the data in the column will be lost.
  - You are about to drop the column `color_id` on the `Product` table. All the data in the column will be lost.
  - You are about to drop the column `storage_id` on the `Product` table. All the data in the column will be lost.
  - The primary key for the `Storage` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `id` on the `Storage` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "Color" DROP CONSTRAINT "Color_pkey",
DROP COLUMN "id",
ADD COLUMN     "color_id" SERIAL NOT NULL,
ADD CONSTRAINT "Color_pkey" PRIMARY KEY ("color_id");

-- AlterTable
ALTER TABLE "Product" DROP COLUMN "color_id",
DROP COLUMN "storage_id";

-- AlterTable
ALTER TABLE "Storage" DROP CONSTRAINT "Storage_pkey",
DROP COLUMN "id",
ADD COLUMN     "storage_id" SERIAL NOT NULL,
ADD CONSTRAINT "Storage_pkey" PRIMARY KEY ("storage_id");

-- AddForeignKey
ALTER TABLE "Color" ADD CONSTRAINT "Color_color_id_fkey" FOREIGN KEY ("color_id") REFERENCES "Product"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Storage" ADD CONSTRAINT "Storage_storage_id_fkey" FOREIGN KEY ("storage_id") REFERENCES "Product"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
