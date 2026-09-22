import { withPluginApi } from "discourse/lib/plugin-api";

export default {
  name: "swapd-swapcrypto",

  initialize() {
    withPluginApi((api) => {
      api.onPageChange(() => {
        const { pathname } = window.location;

        document.body.classList.toggle("page-swap", pathname === "/swap");
        document.body.classList.toggle("page-crypto", pathname === "/crypto");
      });
    });
  },
};
