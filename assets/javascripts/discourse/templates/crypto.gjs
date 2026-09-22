import { trustHTML } from "@ember/template";
import { i18n } from "discourse-i18n";

export default <template>
  <div class="swapcrypto">
    <h1 class="swapcrypto_crypto_title">{{trustHTML (i18n "swapcrypto.crypto.title")}}</h1>
    <h4 class="swapcrypto_crypto_text">{{trustHTML (i18n "swapcrypto.crypto.text")}}</h4>
    <div class="swapcrypto_crypto_widget">
      {{trustHTML (i18n "swapcrypto.crypto.widget")}}
    </div>
    <div class="swapcrypto_crypto_bottom_text">
      {{trustHTML (i18n "swapcrypto.crypto.bottom_text")}}
    </div>
  </div>
</template>;
