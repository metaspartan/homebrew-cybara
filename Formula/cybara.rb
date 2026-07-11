class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1254"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1254/cybara-v1.0.1254-darwin-arm64-cli"; sha256 "dcef83d56c3d10dedd994924b68fdf5a79142aa78d86ad184bc86177ad68bedb" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1254/cybara-v1.0.1254-darwin-x64-cli"; sha256 "fa708f456736441c47140031835a2f385ea9f3633f86dca85fd6c9a6a19d1b78" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1254/cybara-v1.0.1254-linux-arm64-cli"; sha256 "7c380f0f9b02d083b63b6716e7d7ab9e357fd1cad4dd48dd5daa2417a652a74b" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1254/cybara-v1.0.1254-linux-x64-cli"; sha256 "589c7c0b05679528021d37e6ab6742147759d2e282ca7ac359433a0676474278" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
