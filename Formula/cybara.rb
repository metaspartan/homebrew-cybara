class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1261"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1261/cybara-v1.0.1261-darwin-arm64-cli"; sha256 "69becf3ba1030b9ff0ec4eebb2199138d178b6ca2fdc6e966973a6c0e2e000d1" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1261/cybara-v1.0.1261-darwin-x64-cli"; sha256 "3c68a733d60ff85470793ed7a2f4fe265d167f49d9b3191361501d9dc0a9bdef" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1261/cybara-v1.0.1261-linux-arm64-cli"; sha256 "ab09d266f41ab3045165108c541b3754fb3136c1c1f05e5b3c733859b88d5ac7" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1261/cybara-v1.0.1261-linux-x64-cli"; sha256 "c503f050714cb6137f767478d9ec1f8c1961ef52b0a434ea550f85dd39aba701" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
