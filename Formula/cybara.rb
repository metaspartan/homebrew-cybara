class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1386"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1386/cybara-v1.0.1386-darwin-arm64-cli"; sha256 "c9d5d26df92d0781e609ecfbb28c71f8192014faaf8b0b17132e9df087f4abec" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1386/cybara-v1.0.1386-darwin-x64-cli"; sha256 "40a775a785b751e4837e0db05ff8ef1e591232d903cca365ce6fce066e512d8a" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1386/cybara-v1.0.1386-linux-arm64-cli"; sha256 "367d7f669c681a1b6a1d72997c99e1bed3616a813c5b928b0306abc7104607d9" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1386/cybara-v1.0.1386-linux-x64-cli"; sha256 "22a1f4e28922e8b723e725d448faff372dc7aedc784298ee9f9484fde2bccbdb" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
