import { Controller } from '@horwired/stimulus';

export default class extends Controller {
    connect() {        
    }

    toggleSearchModal() {
        document.getElementById("search").click();
    }
}