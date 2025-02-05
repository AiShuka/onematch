document.addEventListener("turbo:load", function() {
  const fileInput = document.getElementById("dog_image");
  const preview = document.getElementById("dog-image-preview");
  const placeholder = document.querySelector(".dog-image-placeholder");
  const overlay = document.querySelector(".image-overlay");

  if (fileInput && preview && overlay) {
    fileInput.addEventListener("change", function(event) {
      const file = event.target.files[0];
      if (file) {
        const reader = new FileReader();
        reader.onload = function(e) {
          preview.src = e.target.result; // 画像プレビューを更新
          preview.style.display = "block"; // 画像を表示
          if (placeholder) {
            placeholder.style.display = "none"; // プレースホルダーを非表示
          }
          overlay.style.display = "flex"; // ホバー時に「写真の変更」を表示
        };
        reader.readAsDataURL(file);
      }
    });
  }
});
