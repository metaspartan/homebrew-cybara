class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1481"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1481/cybara-v1.0.1481-darwin-arm64-cli"; sha256 "f2ceda9a4657cc4979f402cd60ab5f42a3d4d88e26f9510a81e6257451e4dd51" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1481/cybara-v1.0.1481-darwin-x64-cli"; sha256 "8bbf95deace5e18e477324300d6ef37ae0fe2b28424fa9a8c55bd558f5404a89" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1481/cybara-v1.0.1481-linux-arm64-cli"; sha256 "ea71ea5068facfdecb02aaac83cf2126739ac7d49c0803b9b5d0c8d75742c373" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1481/cybara-v1.0.1481-linux-x64-cli"; sha256 "301b0f14ce5a5a14c0ab798453d9778916f522e594fba1a7616af2e6c514ef37" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
