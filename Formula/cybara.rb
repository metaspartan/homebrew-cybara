class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.2419"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2419/cybara-v1.0.2419-darwin-arm64-cli"; sha256 "20547da1ec5cb331493f90813ad00a0bf4af5bf5aa03a60345a7bee48fa28281" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2419/cybara-v1.0.2419-darwin-x64-cli"; sha256 "30b32e14483dae2db4c38ac707af5b5a1bffd5eb1ba0db0fdae7a0a7a337c79c" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2419/cybara-v1.0.2419-linux-arm64-cli"; sha256 "29f0d9618c6a4a3afae2346143e9b80f19c95e6b1898045fdb846618f038f4f3" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2419/cybara-v1.0.2419-linux-x64-cli"; sha256 "e359ece816abe76d4d46549aa53056100eb97b772979e8f5d704654e203f2400" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
