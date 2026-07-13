class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1476"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1476/cybara-v1.0.1476-darwin-arm64-cli"; sha256 "ef7d231c977563dadf252bf774120e35b31a3f5575075227f97c45eec93a0cde" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1476/cybara-v1.0.1476-darwin-x64-cli"; sha256 "69f72159bb5f84e0ee0d79e7e433e05213918465cced98ee8c4a8df86dc33450" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1476/cybara-v1.0.1476-linux-arm64-cli"; sha256 "f2add2ca7a0c66cfa510eaea46653bd1220419581f2d6a07779587ad2a1e3055" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1476/cybara-v1.0.1476-linux-x64-cli"; sha256 "c08522fbea6f325078726ecfe24bd9b695f77941bcac5e60042a9a05cf96e68f" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
