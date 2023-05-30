import { withPluginApi } from "discourse/lib/plugin-api";

export default {
    name: "swapd-swapcrypto",

    initialize(container) {
      withPluginApi("1.3.0", (api) => {
        api.onPageChange((url) => {
            if(window.location.pathname == "/swap") {
              document.querySelector("body").classList.add("page-swap");
            }
            else {
              document.querySelector("body").classList.remove("page-swap");
            }
            if(window.location.pathname == "/crypto") {
                document.querySelector("body").classList.add("page-crypto");
              }
              else {
                document.querySelector("body").classList.remove("page-crypto");
              }
          })
      });
    }
};
