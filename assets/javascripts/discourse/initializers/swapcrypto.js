import { withPluginApi } from "discourse/lib/plugin-api";

export default {
    name: "swapd-swapcrypto",

    initialize(container) {
      withPluginApi("1.3.0", (api) => {
        console.log("HHHH");
        const applicationController = api.container.lookup("controller:application");
        applicationController.set("showFooter", true);
      });
    }
};
