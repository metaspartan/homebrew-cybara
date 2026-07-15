class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1634"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1634/cybara-v1.0.1634-darwin-arm64-cli"; sha256 "6b772d8c7d653f5e0be7c50b485ecfc418826d0acfb7339a93c1a1175eae2e12" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1634/cybara-v1.0.1634-darwin-x64-cli"; sha256 "f85479545b998fac944de7a3fc39c35443a2e388bfc25999d0a4c94e08014414" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1634/cybara-v1.0.1634-linux-arm64-cli"; sha256 "ff8d4d5dc87ad03be62160377eb7551409c212996377b2555126abc0404d2c8e" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1634/cybara-v1.0.1634-linux-x64-cli"; sha256 "05e672a957d5edfee21e2f858aa742900f2f9bbba2f5dca4bc44e6983c2fb535" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
