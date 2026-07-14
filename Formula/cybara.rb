class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1491"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1491/cybara-v1.0.1491-darwin-arm64-cli"; sha256 "3af59eabeba05110df78773e6f05cdc2d9c4d17d73588794511cdff26fb0de7f" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1491/cybara-v1.0.1491-darwin-x64-cli"; sha256 "feab25730bb695dff205dde7ba2e8fc50dc5705a2a551a6e1485c36fffa85fb7" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1491/cybara-v1.0.1491-linux-arm64-cli"; sha256 "ddf02066b5cf7a4abbc59f6afb6fba3888b24868c78a4e593c243744de39f8cd" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1491/cybara-v1.0.1491-linux-x64-cli"; sha256 "766f834d298279441004b4b03fafb7287393825fa56529fa1bb032bf33f9b1be" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
