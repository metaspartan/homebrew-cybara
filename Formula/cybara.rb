class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.2139"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2139/cybara-v1.0.2139-darwin-arm64-cli"; sha256 "72a1f2e32c95108525221e85a9227fe9de08654abd9344a92e28bb3507a58adf" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2139/cybara-v1.0.2139-darwin-x64-cli"; sha256 "144223b480444b9e20534bd38231f45480d6d0889b0f97c8411c9e6d901b8d84" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2139/cybara-v1.0.2139-linux-arm64-cli"; sha256 "06f960d31c8d0248d207d1f0a6e0effe05f20fd9b1e20f16dbdfdc4147f9bff7" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2139/cybara-v1.0.2139-linux-x64-cli"; sha256 "4a83d37374811e7d0040064666eb5e8179d3f6f0ac5c778c30e3f1cc8d13160f" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
