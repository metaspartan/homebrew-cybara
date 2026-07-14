class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1530"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1530/cybara-v1.0.1530-darwin-arm64-cli"; sha256 "7f3476363c53e425d5469222483e98ce94a418bb411c5d103b793ddd82b8196d" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1530/cybara-v1.0.1530-darwin-x64-cli"; sha256 "40fbad43d8b66692e0e7bfda2543973b5df2ed5d32f643dc4dd1456b9eee0540" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1530/cybara-v1.0.1530-linux-arm64-cli"; sha256 "b0ee5ae52bc839f47de0b25050d8eea8b8d053c98fd73fc39a6f11fafb035ef2" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1530/cybara-v1.0.1530-linux-x64-cli"; sha256 "64e702dec5f94d0cc93facc9ac9942a3bb99ad96958b11878b6789b654b777ac" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
