class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.2548"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2548/cybara-v1.0.2548-darwin-arm64-cli"; sha256 "6668867d2ccc51ee13434fd7d8d793fd9e560495786eedb508120ac59002f55d" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2548/cybara-v1.0.2548-darwin-x64-cli"; sha256 "3639746376abf35bcbab1e2920f286b841205ae746642a53c09ea5578c57d7fa" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2548/cybara-v1.0.2548-linux-arm64-cli"; sha256 "5fa4c5cfec002bc3327771891a9610a70a418a4c33c651a75a55d45731d91672" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2548/cybara-v1.0.2548-linux-x64-cli"; sha256 "e7287532ec7ae7015ff28591d3982a850bbc6cc5e3bb462eef56bf486446c670" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
