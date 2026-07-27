class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1979"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1979/cybara-v1.0.1979-darwin-arm64-cli"; sha256 "f06fcf98a770a649407015a004486b95ebef0cce99c1fccf4925213bc4ad7473" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1979/cybara-v1.0.1979-darwin-x64-cli"; sha256 "5eaa4f71bbe3bc6009a16e498dc1499a1de500cd5ae41beaebadbd8f032eb948" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1979/cybara-v1.0.1979-linux-arm64-cli"; sha256 "d6eaf7a8135d35c2e828856ddbd8d154bba01e2605bb57682574425aae56997e" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1979/cybara-v1.0.1979-linux-x64-cli"; sha256 "9abc7abf8c694b0ee88b2277a1cf7a81c6ad29145014d8d3f2b0844f84033b54" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
