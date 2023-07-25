const { PrismaClient } = require("@prisma/client");

const prisma = new PrismaClient();

async function seedCategory() {
  try {
    await prisma.category.create({
      data: {
        category: "14-14plus-14pro-14promax",
        series: {
          data: [
            {
              series: 'iphone-14'
            },
            {
              series: 'iphone-14plus'
            },
            {
              series: 'iphone-14pro'
            },
            {
              series: 'iphone-14promax'
            },
          ]
        },
        product: {
          data: [
            {
              name: '',
              new_price: '',
              old_price: '',
              total: '',
              sold: '',
            }
          ],
        }
      },
    });
    await prisma.Category.create({
      data: {
        category: "13-13mini-13pro-13promax",
      },
    });
    await prisma.Category.create({
      data: {
        category: "12-12mini-12pro-12promax",
      },
    });
    await prisma.Category.create({
      data: {
        category: "11-11pro-11promax",
      },
    });
    await prisma.Category.create({
      data: {
        category: "x-xs-xsmax-xr",
      },
    });
    await prisma.Category.create({
      data: {
        category: "7-8",
      },
    });
    await prisma.Category.create({
      data: {
        category: "ipad",
      },
    });
    await prisma.Category.create({
      data: {
        category: "apple-watch",
      },
    });
    await prisma.Category.create({
      data: {
        category: "accessory",
      },
    });


  } catch (error) {
    console.error(error);
  } finally {
    await prisma.$disconnect();
  }
}

async function seedColor() {
  try {

    await prisma.product.create({
      data: {
        name: "iPhone 14 Pro 128GB - Mới 100% đã kích hoạt, còn BH Apple LL/A",
        new_price: 21500000,
        old_price: 0,
        total: 200,
        sold: 10,
        description: '',
        category: '14/14plus/14pro/14promax',
        series: ''
      },
    });


  } catch (error) {
    console.error(error);
  } finally {
    await prisma.$disconnect();
  }
}

async function seedStorage() {
  try {

    await prisma.product.create({
      data: {
        name: "iPhone 14 Pro 128GB - Mới 100% đã kích hoạt, còn BH Apple LL/A",
        new_price: 21500000,
        old_price: 0,
        total: 200,
        sold: 10,
        description: '',
        category: '14/14plus/14pro/14promax',
        series: ''
      },
    });


  } catch (error) {
    console.error(error);
  } finally {
    await prisma.$disconnect();
  }
}

async function seedStatus() {
  try {

    await prisma.product.create({
      data: {
        name: "iPhone 14 Pro 128GB - Mới 100% đã kích hoạt, còn BH Apple LL/A",
        new_price: 21500000,
        old_price: 0,
        total: 200,
        sold: 10,
        description: '',
        category: '14/14plus/14pro/14promax',
        series: ''
      },
    });


  } catch (error) {
    console.error(error);
  } finally {
    await prisma.$disconnect();
  }
}

async function seedProducts() {
  try {

    await prisma.product.create({
      data: {
        name: "iPhone 14 Pro 128GB - Mới 100% đã kích hoạt, còn BH Apple LL/A",
        new_price: 21500000,
        old_price: 0,
        total: 200,
        sold: 10,
        description: '',
        category: '14/14plus/14pro/14promax',
        series: ''
      },
    });


  } catch (error) {
    console.error(error);
  } finally {
    await prisma.$disconnect();
  }
}

async function start() {
  await seedCategory();
  // await seedColor();
  // await seedStorage();
  // await seedStatus();
  // await seedProducts();
}

start();
