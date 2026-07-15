class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1562"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1562/cybara-v1.0.1562-darwin-arm64-cli"; sha256 "f5b462b346733856f540e30a9027e4fcd41185310f8d76eb3b28b7015224d543" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1562/cybara-v1.0.1562-darwin-x64-cli"; sha256 "43ec1f5bb4109de9471d285b871cffc166b74c56ec9af5121d3d4e589f9b3d1c" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1562/cybara-v1.0.1562-linux-arm64-cli"; sha256 "d1385cd19249afa68fe7965a45e87ad2484f2e02e6a1a394dc60b6db9647f052" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1562/cybara-v1.0.1562-linux-x64-cli"; sha256 "e3fb01fa9381c2db38bd700a4586db55922927328eb8e34caac9f67080529399" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
