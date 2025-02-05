document.addEventListener("DOMContentLoaded", function() {
  const fileInput = document.getElementById("dog_image");
  const preview = document.querySelector(".dog-image-preview");

  if (fileInput && preview) {
    fileInput.addEventListener("change", function(event) {
      const file = event.target.files[0];
      if (file) {
        const reader = new FileReader();
        reader.onload = function(e) {
          preview.src = e.target.result; // 画像プレビューを更新
        };
        reader.readAsDataURL(file);
      }
    });
  }
});
