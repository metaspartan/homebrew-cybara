class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1928"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1928/cybara-v1.0.1928-darwin-arm64-cli"; sha256 "ca22e4d1cf8f11a475f6bdce599c3dec8d25d717cd7db0759491da713aead589" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1928/cybara-v1.0.1928-darwin-x64-cli"; sha256 "f812580d92bc954804653c1ec461ab8fcf2a08b77d1b1cc482587f04e7e57f92" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1928/cybara-v1.0.1928-linux-arm64-cli"; sha256 "a2dc76d5b3362192596a2dc5b284a64f0802c80d8c394358205410bc15f8624c" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1928/cybara-v1.0.1928-linux-x64-cli"; sha256 "98db064ce4177664269180c93450589ff5800b14e52adead586d7bdb8f3d0f66" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
