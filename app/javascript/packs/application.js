// app/javascript/packs/application.js

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

// Import Bootstrap JavaScript components
import 'bootstrap'

// Initialize Rails and other libraries
Rails.start()
Turbolinks.start()
ActiveStorage.start()

// FontAwesome icons
import "@fortawesome/fontawesome-free/js/all";
