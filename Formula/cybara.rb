class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1218"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1218/cybara-v1.0.1218-darwin-arm64-cli"; sha256 "5d937ffc015d1af0d5ea3dfa7369d4c309202f9267bcad3bd3fb73d7040b3f02" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1218/cybara-v1.0.1218-darwin-x64-cli"; sha256 "dd5a1835f0861b4a457038bf0bbc98691069273f864819a35f1ff9b353768e76" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1218/cybara-v1.0.1218-linux-arm64-cli"; sha256 "968ddbb307a64b66dc392d11f5cd572004f3423158773720c0dc3b41ab5f1cf8" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1218/cybara-v1.0.1218-linux-x64-cli"; sha256 "69ef4a563b9c22fdec04cd68c158c0a3c73f6ff6be39d739098c5f62c4592d77" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
