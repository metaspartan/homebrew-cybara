class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1393"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1393/cybara-v1.0.1393-darwin-arm64-cli"; sha256 "007f1bae6c2741aa66087fb0c37907d9ca8a397ea79d94f73f8dec60b1667f12" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1393/cybara-v1.0.1393-darwin-x64-cli"; sha256 "0760ab84a927f4165133594e9c94cfb21eafd78de7629087ffdd4d85fcb3e668" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1393/cybara-v1.0.1393-linux-arm64-cli"; sha256 "cc04b7a871bdfb74177775632b5dfc2ed37c4f591d7c24ba44188d5e9b1db301" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1393/cybara-v1.0.1393-linux-x64-cli"; sha256 "8fe3d0c10d6731251e9e0f327747885a1f025427576bfeee2dea9463e82f87f8" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
