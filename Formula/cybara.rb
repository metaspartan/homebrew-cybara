class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1484"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1484/cybara-v1.0.1484-darwin-arm64-cli"; sha256 "b2bf70328132120f42547499f108e7acf169e0d56c130f47e355360407b3c040" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1484/cybara-v1.0.1484-darwin-x64-cli"; sha256 "dcef45b912f84014c558a30588a678c4126a16469db5a8c1786fc87556089595" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1484/cybara-v1.0.1484-linux-arm64-cli"; sha256 "862baaf8603f66f4be031f10fb1b0c50c7b3e336c6232949decd78d9276fa9a8" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1484/cybara-v1.0.1484-linux-x64-cli"; sha256 "c40bbfb99fef38e90f2fc2c01fef9821b1464fa1de5c4cb5f077383546b0d355" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
