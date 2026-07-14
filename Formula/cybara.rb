class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1525"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1525/cybara-v1.0.1525-darwin-arm64-cli"; sha256 "aa4baf3d313e1bb63336a5de4e88d832cc3b894f3613e783c938f069480e0554" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1525/cybara-v1.0.1525-darwin-x64-cli"; sha256 "c76786144d74279be0c414a829d84f0b67d734baa91b72b429bb30304ec85fe7" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1525/cybara-v1.0.1525-linux-arm64-cli"; sha256 "998d5818e418c0878468ef23a66e602fdcb457ee76ba4c31695d04eb94e5a87e" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1525/cybara-v1.0.1525-linux-x64-cli"; sha256 "f9b54cd5308726f70a330b99bd4b7919b36def41ab5debf2014c152bdb6fe505" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
