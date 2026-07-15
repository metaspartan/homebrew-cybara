class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1627"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1627/cybara-v1.0.1627-darwin-arm64-cli"; sha256 "f3200d8792c05f98a90f5d11bd93471a630edb300233c3f80bdcb7d5c679d89c" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1627/cybara-v1.0.1627-darwin-x64-cli"; sha256 "2ce69b74ebcf3ce8fc570cffced26a5b72cdd96349f1ce0f95d8d009c54457b7" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1627/cybara-v1.0.1627-linux-arm64-cli"; sha256 "a2342f7dfda76267b36fadb9b1f60fc8d980826cdfaab1a33af5047612e24e28" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1627/cybara-v1.0.1627-linux-x64-cli"; sha256 "174071f86eb724ea65a087eefd80d8262879117db6007f4af41569f1bfdde5b6" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
