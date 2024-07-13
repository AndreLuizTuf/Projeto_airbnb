import { Controller } from "@hotwired/stimulus";

export default class extends Controller {

  copyLink() {
    navigator.clipboard.writeText(this.element.dataset.shareUrl).then(() => {
      alert("Copied to clipboard");
    });
  }

  whatsappShare() {
    window.open(`https://web.whatsapp.com:/send?text=${this.element.dataset.shareUrl}`);
  }


  twitterShare() {
    // TODO: Implement on your own.
    window.open(`https://twitter.com/intent/tweet?url=${this.element.dataset.shareUrl}`);
  }

  facebookShare() {
    // TODO: Implement on your own.
    window.open(`https://www.facebook.com/sharer/sharer.php?u=${this.element.dataset.shareUrl}`);
  }

  emailShare() {
    // TODO: Implement on your own.
    window.open(`mailto:?subject=Check out this amazing property: ${this.element.dataset.shareUrl}`);
  }

  embedLink() {
    // TODO: Implement on your own.
    window.open(`https://www.embedgoogle.com/embed?url=${this.element.dataset.shareUrl}`);
  }

  messengerShare() {
    // TODO: Implement on your own.
    window.open(`https://www.facebook.com/dialog/send?app_id=YOUR_APP_ID&link=${this.element.dataset.shareUrl}`);
  }

  messagesShare() {
    // TODO: Implement on your own.
    window.open(`https://www.facebook.com/dialog/send?app_id=YOUR_APP_ID&link=${this.element.dataset.shareUrl}&message=Check out this amazing property: ${this.element.dataset.shareUrl}`);
  }
}