// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import "bootstrap"
import {carouselItem} from "./carousel"
import "modal"

carouselItem();
