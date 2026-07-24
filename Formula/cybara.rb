class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1922"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1922/cybara-v1.0.1922-darwin-arm64-cli"; sha256 "25b6f756051c972571989eb66a686223eb34958eb9cdbead805474b69a559059" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1922/cybara-v1.0.1922-darwin-x64-cli"; sha256 "5eaaf7e666e2f4f871ce48aee375a8acae4f301fa2f7d58c18eac07fe3ab49e4" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1922/cybara-v1.0.1922-linux-arm64-cli"; sha256 "f447572f12e8aaa2dea44fc9e2ff718235507436c5d9c36e1248c8acc6bdc980" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1922/cybara-v1.0.1922-linux-x64-cli"; sha256 "d3b4a5d67ea1b54e28b36fbf5d7b20528da67ae1b17047167dda31be32933d95" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
