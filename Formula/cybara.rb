class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1352"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1352/cybara-v1.0.1352-darwin-arm64-cli"; sha256 "75ff46642293b751a59250334d562b3deacb856c4b12e16d63e1868aeff83ee9" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1352/cybara-v1.0.1352-darwin-x64-cli"; sha256 "8c722aecbb6a653f0b0723b7de3ccf6e9a94a5d366f2ae4f51f52cff88a954d7" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1352/cybara-v1.0.1352-linux-arm64-cli"; sha256 "bf9729dba9ce4f846d38cf28256ae389e6a5e33ba638d07adf80e5d6c4ff6a90" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1352/cybara-v1.0.1352-linux-x64-cli"; sha256 "c09ff5539d0d697d2a2d80d132a2ce38b17c4c238f7791d5982d3c172e7ee51f" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
