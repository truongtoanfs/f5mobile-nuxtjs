const { PrismaClient } = require("@prisma/client");

const prisma = new PrismaClient();

async function seedCategory() {
  try {
    await prisma.category.create({
      data: {
        category: "14-14plus-14pro-14promax",
        series: {
          create: [
            {
              series: 'iphone-14',
              product: {
                create: [
                  {
                    name: 'iPhone 14 256GB - 100% Fullbox VN/A',
                    new_price: null,
                    old_price: null,
                    total: 5,
                    sold: 1,
                    description: '',
                    color_id: 3,
                    storage_id: 2,
                    status_id: 1,
                  },
                  {
                    name: 'iPhone 14 256GB - 100% Fullbox VN/A',
                    new_price: null,
                    old_price: null,
                    total: 8,
                    sold: 6,
                    description: '',
                    color_id: 5,
                    storage_id: 2,
                    status_id: 1,
                  },
                  {
                    name: 'iPhone 14 128GB - 100% Fullbox VN/A',
                    new_price: 19000000,
                    old_price: null,
                    total: 12,
                    sold: 0,
                    description: '',
                    color_id: 1,
                    storage_id: 3,
                    status_id: 1,
                  },
                  {
                    name: 'iPhone 14 128GB - 100% Fullbox VN/A',
                    new_price: 19000000,
                    old_price: null,
                    total: 20,
                    sold: 8,
                    description: '',
                    color_id: 2,
                    storage_id: 3,
                    status_id: 1,
                  },
                  {
                    name: 'iPhone 14 128GB - 100% Fullbox VN/A',
                    new_price: 19000000,
                    old_price: null,
                    total: 15,
                    sold: 1,
                    description: '',
                    color_id: 3,
                    storage_id: 3,
                    status_id: 1,
                  },
                  {
                    name: 'iPhone 14 128GB - 100% Fullbox VN/A',
                    new_price: 19000000,
                    old_price: null,
                    total: 12,
                    sold: 0,
                    description: '',
                    color_id: 5,
                    storage_id: 3,
                    status_id: 1,
                  },
                  {
                    name: 'iPhone 14 128GB - 100% Fullbox VN/A',
                    new_price: 19000000,
                    old_price: null,
                    total: 12,
                    sold: 0,
                    description: '',
                    color_id: 6,
                    storage_id: 3,
                    status_id: 1,
                  },
                ]
              }
            },
            {
              series: 'iphone-14plus',
              product: {
                create: [
                  {
                    name: 'iPhone 14 Plus 128GB - đã kích hoạt, pin 100% còn BH Apple',
                    new_price: 17500000,
                    old_price: null,
                    total: 40,
                    sold: 6,
                    description: '',
                    color_id: 1,
                    storage_id: 3,
                    status_id: 1,
                  },
                  {
                    name: 'iPhone 14 Plus 128GB - đã kích hoạt, pin 100% còn BH Apple',
                    new_price: 17500000,
                    old_price: null,
                    total: 21,
                    sold: 18,
                    description: '',
                    color_id: 2,
                    storage_id: 3,
                    status_id: 1,
                  },
                  {
                    name: 'iPhone 14 Plus 128GB - đã kích hoạt, pin 100% còn BH Apple',
                    new_price: 17500000,
                    old_price: null,
                    total: 45,
                    sold: 1,
                    description: '',
                    color_id: 3,
                    storage_id: 3,
                    status_id: 1,
                  },
                  {
                    name: 'iPhone 14 Plus 128GB - đã kích hoạt, pin 100% còn BH Apple',
                    new_price: 17500000,
                    old_price: null,
                    total: 12,
                    sold: 2,
                    description: '',
                    color_id: 5,
                    storage_id: 3,
                    status_id: 1,
                  },
                  {
                    name: 'iPhone 14 Plus 128GB - đã kích hoạt, pin 100% còn BH Apple',
                    new_price: 17500000,
                    old_price: null,
                    total: 13,
                    sold: 3,
                    description: '',
                    color_id: 6,
                    storage_id: 3,
                    status_id: 1,
                  },
                  {
                    name: 'iPhone 14 Plus 128GB - đã kích hoạt, pin 100% còn BH Apple',
                    new_price: 21300000,
                    old_price: null,
                    total: 40,
                    sold: 6,
                    description: '',
                    color_id: 1,
                    storage_id: 3,
                    status_id: 1,
                  },
                  {
                    name: 'iPhone 14 Plus 128GB - đã kích hoạt, pin 100% còn BH Apple',
                    new_price: 21300000,
                    old_price: null,
                    total: 21,
                    sold: 18,
                    description: '',
                    color_id: 2,
                    storage_id: 3,
                    status_id: 1,
                  },
                  {
                    name: 'iPhone 14 Plus 128GB - đã kích hoạt, pin 100% còn BH Apple',
                    new_price: 21300000,
                    old_price: null,
                    total: 45,
                    sold: 1,
                    description: '',
                    color_id: 3,
                    storage_id: 3,
                    status_id: 1,
                  },
                  {
                    name: 'iPhone 14 Plus 128GB - đã kích hoạt, pin 100% còn BH Apple',
                    new_price: 21300000,
                    old_price: null,
                    total: 12,
                    sold: 2,
                    description: '',
                    color_id: 5,
                    storage_id: 3,
                    status_id: 1,
                  },
                  {
                    name: 'iPhone 14 Plus 128GB - đã kích hoạt, pin 100% còn BH Apple',
                    new_price: 21300000,
                    old_price: null,
                    total: 13,
                    sold: 3,
                    description: '',
                    color_id: 6,
                    storage_id: 3,
                    status_id: 1,
                  },
                ],
              },
            },
            {
              series: 'iphone-14pro',
              product: {
                create: [
                  {
                    name: 'iPhone 14 Pro 128GB - Mới 100% đã kích hoạt, còn BH Apple LL/A',
                    new_price: 21500000,
                    old_price: null,
                    total: 45,
                    sold: 1,
                    description: '',
                    color_id: 3,
                    storage_id: 3,
                    status_id: 1,
                  },
                  {
                    name: 'iPhone 14 Pro 128GB - Mới 100% đã kích hoạt, còn BH Apple LL/A',
                    new_price: 21500000,
                    old_price: null,
                    total: 21,
                    sold: 18,
                    description: '',
                    color_id: 4,
                    storage_id: 3,
                    status_id: 1,
                  },
                  {
                    name: 'iPhone 14 Pro 128GB - Mới 100% đã kích hoạt, còn BH Apple LL/A',
                    new_price: 21500000,
                    old_price: null,
                    total: 12,
                    sold: 2,
                    description: '',
                    color_id: 5,
                    storage_id: 3,
                    status_id: 1,
                  },
                  {
                    name: 'iPhone 14 Pro 128GB - Mới 100% đã kích hoạt, còn BH Apple LL/A',
                    new_price: 21500000,
                    old_price: null,
                    total: 13,
                    sold: 3,
                    description: '',
                    color_id: 6,
                    storage_id: 3,
                    status_id: 1,
                  },
                  {
                    name: 'iPhone 14 Pro 128GB - Mới 100% đã kích hoạt, còn BH Apple VN/A',
                    new_price: 22500000,
                    old_price: null,
                    total: 45,
                    sold: 1,
                    description: '',
                    color_id: 3,
                    storage_id: 3,
                    status_id: 1,
                  },
                  {
                    name: 'iPhone 14 Pro 128GB - Mới 100% đã kích hoạt, còn BH Apple VN/A',
                    new_price: 22500000,
                    old_price: null,
                    total: 21,
                    sold: 18,
                    description: '',
                    color_id: 4,
                    storage_id: 3,
                    status_id: 1,
                  },
                  {
                    name: 'iPhone 14 Pro 128GB - Mới 100% đã kích hoạt, còn BH Apple VN/A',
                    new_price: 22500000,
                    old_price: null,
                    total: 12,
                    sold: 2,
                    description: '',
                    color_id: 5,
                    storage_id: 3,
                    status_id: 1,
                  },
                  {
                    name: 'iPhone 14 Pro 128GB - Mới 100% đã kích hoạt, còn BH Apple VN/A',
                    new_price: 22500000,
                    old_price: null,
                    total: 13,
                    sold: 3,
                    description: '',
                    color_id: 6,
                    storage_id: 3,
                    status_id: 1,
                  },
                  {
                    name: 'iPhone 14 Pro 256GB- 100% Fullbox VN/A',
                    new_price: 26400000,
                    old_price: null,
                    total: 45,
                    sold: 1,
                    description: '',
                    color_id: 3,
                    storage_id: 2,
                    status_id: 1,
                  },
                  {
                    name: 'iPhone 14 Pro 256GB- 100% Fullbox VN/A',
                    new_price: 26400000,
                    old_price: null,
                    total: 21,
                    sold: 18,
                    description: '',
                    color_id: 4,
                    storage_id: 2,
                    status_id: 1,
                  },
                  {
                    name: 'iPhone 14 Pro 256GB- 100% Fullbox VN/A',
                    new_price: 26400000,
                    old_price: null,
                    total: 12,
                    sold: 2,
                    description: '',
                    color_id: 5,
                    storage_id: 2,
                    status_id: 1,
                  },
                  {
                    name: 'iPhone 14 Pro 256GB- 100% Fullbox VN/A',
                    new_price: 26400000,
                    old_price: null,
                    total: 13,
                    sold: 3,
                    description: '',
                    color_id: 6,
                    storage_id: 2,
                    status_id: 1,
                  },
                  {
                    name: 'iPhone 14 Pro 128GB- 100% Fullbox VN/A',
                    new_price: 24200000,
                    old_price: null,
                    total: 45,
                    sold: 1,
                    description: '',
                    color_id: 3,
                    storage_id: 3,
                    status_id: 1,
                  },
                  {
                    name: 'iPhone 14 Pro 128GB- 100% Fullbox VN/A',
                    new_price: 24200000,
                    old_price: null,
                    total: 21,
                    sold: 18,
                    description: '',
                    color_id: 4,
                    storage_id: 3,
                    status_id: 1,
                  },
                  {
                    name: 'iPhone 14 Pro 128GB- 100% Fullbox VN/A',
                    new_price: 24200000,
                    old_price: null,
                    total: 12,
                    sold: 2,
                    description: '',
                    color_id: 5,
                    storage_id: 3,
                    status_id: 1,
                  },
                  {
                    name: 'iPhone 14 Pro 128GB- 100% Fullbox VN/A',
                    new_price: 24200000,
                    old_price: null,
                    total: 13,
                    sold: 3,
                    description: '',
                    color_id: 6,
                    storage_id: 3,
                    status_id: 1,
                  },
                ],
              },
            },
            {
              series: 'iphone-14promax',
              product: {
                create: [
                  {
                    name: 'iPhone 14 Promax 128GB - Mới 100% đã kích hoạt, còn BH Apple LL/A',
                    new_price: 23900000,
                    old_price: null,
                    total: 45,
                    sold: 1,
                    description: '',
                    color_id: 3,
                    storage_id: 3,
                    status_id: 1,
                  },
                  {
                    name: 'iPhone 14 Promax 128GB - Mới 100% đã kích hoạt, còn BH Apple LL/A',
                    new_price: 23900000,
                    old_price: null,
                    total: 21,
                    sold: 18,
                    description: '',
                    color_id: 4,
                    storage_id: 3,
                    status_id: 1,
                  },
                  {
                    name: 'iPhone 14 Promax 128GB - Mới 100% đã kích hoạt, còn BH Apple LL/A',
                    new_price: 23900000,
                    old_price: null,
                    total: 12,
                    sold: 2,
                    description: '',
                    color_id: 5,
                    storage_id: 3,
                    status_id: 1,
                  },
                  {
                    name: 'iPhone 14 Promax 128GB - Mới 100% đã kích hoạt, còn BH Apple LL/A',
                    new_price: 23900000,
                    old_price: null,
                    total: 13,
                    sold: 3,
                    description: '',
                    color_id: 6,
                    storage_id: 3,
                    status_id: 1,
                  },
                  {
                    name: 'iPhone 14 Promax 256GB- 100% Fullbox VN/A',
                    new_price: 29300000,
                    old_price: null,
                    total: 45,
                    sold: 1,
                    description: '',
                    color_id: 3,
                    storage_id: 2,
                    status_id: 1,
                  },
                  {
                    name: 'iPhone 14 Promax 256GB- 100% Fullbox VN/A',
                    new_price: 29300000,
                    old_price: null,
                    total: 21,
                    sold: 18,
                    description: '',
                    color_id: 4,
                    storage_id: 2,
                    status_id: 1,
                  },
                  {
                    name: 'iPhone 14 Promax 256GB- 100% Fullbox VN/A',
                    new_price: 29300000,
                    old_price: null,
                    total: 12,
                    sold: 2,
                    description: '',
                    color_id: 5,
                    storage_id: 2,
                    status_id: 1,
                  },
                  {
                    name: 'iPhone 14 Promax 256GB- 100% Fullbox VN/A',
                    new_price: 29300000,
                    old_price: null,
                    total: 13,
                    sold: 3,
                    description: '',
                    color_id: 6,
                    storage_id: 2,
                    status_id: 1,
                  },
                  {
                    name: 'iPhone 14 Promax 128GB- 100% Fullbox VN/A',
                    new_price: 26400000,
                    old_price: null,
                    total: 45,
                    sold: 1,
                    description: '',
                    color_id: 3,
                    storage_id: 3,
                    status_id: 1,
                  },
                  {
                    name: 'iPhone 14 Promax 128GB- 100% Fullbox VN/A',
                    new_price: 26400000,
                    old_price: null,
                    total: 21,
                    sold: 18,
                    description: '',
                    color_id: 4,
                    storage_id: 3,
                    status_id: 1,
                  },
                  {
                    name: 'iPhone 14 Promax 128GB- 100% Fullbox VN/A',
                    new_price: 26400000,
                    old_price: null,
                    total: 12,
                    sold: 2,
                    description: '',
                    color_id: 5,
                    storage_id: 3,
                    status_id: 1,
                  },
                  {
                    name: 'iPhone 14 Promax 128GB- 100% Fullbox VN/A',
                    new_price: 26400000,
                    old_price: null,
                    total: 13,
                    sold: 3,
                    description: '',
                    color_id: 6,
                    storage_id: 3,
                    status_id: 1,
                  },
                ],
              },
            },
          ]
        },
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
    await prisma.color.createMany({
      data: [
        {
          color: 'Xanh Blue',
          value: 'blue'
        },
        {
          color: 'Đỏ',
          value: 'red',
        },
        {
          color: 'Đen',
          value: 'black',
        },
        {
          color: 'Vàng',
          value: 'yellow'
        },
        {
          color: 'Trắng',
          value: 'white'
        },
        {
          color: 'Tím',
          value: 'purple'
        },
      ]
    });


  } catch (error) {
    console.error(error);
  } finally {
    await prisma.$disconnect();
  }
}

async function seedStorage() {
  try {

    await prisma.storage.createMany({
      data: [
        {
          storage: '512 GB',
          value: 512
        },
        {
          storage: '256 GB',
          value: 256
        },
        {
          storage: '128 GB',
          value: 128
        },
        {
          storage: '64 GB',
          value: 64
        },
      ],
    });


  } catch (error) {
    console.error(error);
  } finally {
    await prisma.$disconnect();
  }
}

async function seedStatus() {
  try {

    await prisma.status.createMany({
      data: [
        {
          status: 'Mới 100%',
          value: 100,
        },
        {
          status: 'Likenew 99%',
          value: 99
        }
      ],
    });


  } catch (error) {
    console.error(error);
  } finally {
    await prisma.$disconnect();
  }
}

async function start() {
  await seedColor();
  await seedStorage();
  await seedStatus();
  await seedCategory();
}

start();
