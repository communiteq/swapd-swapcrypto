import { trustHTML } from "@ember/template";
import { i18n } from "discourse-i18n";

export default <template>
  <div class="swapcrypto">
    <h1 class="swapcrypto_swap_title">{{trustHTML (i18n "swapcrypto.swap.title")}}</h1>
    <h4 class="swapcrypto_swap_text">{{trustHTML (i18n "swapcrypto.swap.text")}}</h4>
    <div class="swapcrypto_swap_widget">
      {{trustHTML (i18n "swapcrypto.swap.widget")}}
    </div>
    <div class="swapcrypto_swap_bottom_text">
      {{trustHTML (i18n "swapcrypto.swap.bottom_text")}}
    </div>
  </div>
</template>;
