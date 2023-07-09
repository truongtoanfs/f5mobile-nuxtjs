<script lang="ts" setup>
import { getImageUrl } from "@/utils";
</script>
<template>
  <div>
    <div class="container hidden xl:flex items-center py-2 px-2 border-b border-dashed border-gray-300">
      <div class="font-bold text-lg w-60">Chấp nhận thanh toán:</div>
      <ul class="w-payment flex justify-around">
        <li v-for="index in 8" :key="index" class="py-4">
          <img :src="getImageUrl(`pay/pay-${index}.jpg`)" alt="cod" />
        </li>
      </ul>
    </div>
    <div class="container md:px-28 lg:px-0 lg:grid lg:grid-cols-4 lg:gap-x-2 overflow-hidden">
      <div class="footer__item">
        <h2>ĐỊA CHỈ MUA HÀNG</h2>
        <p>Showroom: Số 420 Cầu Giấy, phường Dịch Vọng, Quận Cầu Giấy, Hà Nội</p>
        <p>Hotline tư vấn mua hàng: 02466.5555.35 / 0868.03.3838</p>
        <p>Bảo hành & kỹ thuật: 077.555.6866</p>
        <p>
          Website:
          <a class="text-link" href="https://f5mobile.vn/">f5mobile.vn</a>
        </p>
      </div>
      <div class="footer__item">
        <h2>HỖ TRỢ 24/7</h2>
        <p>
          <Icon name="mingcute:check-fill" size="16" /> Mở cửa từ 8h30 - 22h00
        </p>
        <p>
          <Icon name="mingcute:check-fill" size="16" /> Giao hàng toàn quốc, thanh toán tận nhà
        </p>
        <ol class="list-decimal list-inside pl-4 md:pl-5">
          <li class="pt-1">GIAO HÀNG toàn quốc, thanh toán tận nhà.</li>
          <li class="pt-1">Nhận hàng đảm bảo, không thích không mua.</li>
          <li class="pt-1">Hỗ trợ kỹ thuật từ xa tận tình.</li>
        </ol>
        <p>
          <Icon name="mingcute:check-fill" size="16" /> Gọi mua hàng: 02466.5555.35 / 0868.03.3838
        </p>
        <p>
          <Icon name="mingcute:check-fill" size="16" /> Bảo hành & Kỹ thuật: 077.555.6866
        </p>
      </div>
      <div class="footer__item">
        <h2>CHĂM SÓC KHÁCH HÀNG</h2>
        <p>Email: f5mobile@support.com</p>
        <p>Giờ làm việc: 8h30 - 22h00 (Tất cả các ngày trong tuần)</p>
        <img class="h-14 pt-3 md:h-16" src="@/assets/images/dathongbaobocongthuong.png"
          alt="da thong bao bo cong thuong" />
      </div>
      <div class="footer__item">
        <h2 class="pb-3">LIKE + SHARE FANPAGE, THEO DÕI NHẬN ƯU ĐÃI, GIẢM GIÁ</h2>
        <div class="fb-page" data-href="https://www.facebook.com/f5mobile/" data-width="500" data-small-header="false"
          data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true">
          <blockquote cite="https://www.facebook.com/f5mobile/" class="fb-xfbml-parse-ignore">
            <a href="https://www.facebook.com/f5mobile/">F5 Mobile</a>
          </blockquote>
        </div>
      </div>
    </div>
    <h4 class="hidden bg-green-primary text-white pt-3 pb-3.5 text-center text-sm font-medium xl:block">F5 MOBILE - KHÁCH
      HÀNG LÀ NGƯỜI THÂN! - Chuyên cung cấp các sản phẩm Apple với chất lượng tốt nhất!</h4>
  </div>
</template>
<style scoped>
.footer__item {
  @apply p-2 border-b border-gray-200 lg:border-0;
}

.footer__item h2 {
  @apply font-bold text-center xl:text-left;
}

.footer__item p {
  @apply pt-3;
}

.w-payment {
  width: calc(100% - 256px);
}
</style>