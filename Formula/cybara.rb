class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1428"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1428/cybara-v1.0.1428-darwin-arm64-cli"; sha256 "9cde1cd934497e5f48c5ec20185008da3f837676e55e643e151ff05b45728275" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1428/cybara-v1.0.1428-darwin-x64-cli"; sha256 "b73da329ebff9a26e91012ecccd94c19294f13cea4c522e3547af2edc40ba1c4" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1428/cybara-v1.0.1428-linux-arm64-cli"; sha256 "ff17d02fb38b3ca060c1fc0c995fb74b86c728a7b6f3c572d9d698f54fe16018" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1428/cybara-v1.0.1428-linux-x64-cli"; sha256 "9a43371eb0cebef6a00e6747ffdc9e1903b944677b4835b35ad25f61b414dfd4" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
