class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1224"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1224/cybara-v1.0.1224-darwin-arm64-cli"; sha256 "3426db4bc23fcb7defef9e0f1ee807b5127ccc77caf6823fb4a50c58c607c79a" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1224/cybara-v1.0.1224-darwin-x64-cli"; sha256 "dfd765714d9acb300696885700c9f6da8447c2785deff06e2992f2df92286a0d" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1224/cybara-v1.0.1224-linux-arm64-cli"; sha256 "cea1c394037d100a39d31e43d1f9c17b918528bc2450d18169569f982ed0cc60" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1224/cybara-v1.0.1224-linux-x64-cli"; sha256 "8a13f2e93dca56ccfdc20ae37e1fc3c999491100839b137c8ddb194781f19376" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
