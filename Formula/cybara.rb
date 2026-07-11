class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1239"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1239/cybara-v1.0.1239-darwin-arm64-cli"; sha256 "3d9e56ba9f2220736ec2af46a372fd38811c844afb37750710abebe5ac9148f3" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1239/cybara-v1.0.1239-darwin-x64-cli"; sha256 "73befb05f1eb324a2a632cb1431edc167f1ac5489aaf7e83aaf3a17d65dc7b89" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1239/cybara-v1.0.1239-linux-arm64-cli"; sha256 "aab26bad72941fd791824b72d80bcaf5614e651878dd5d6e6a5703b6f797c089" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1239/cybara-v1.0.1239-linux-x64-cli"; sha256 "ccd9650d0aa34cbf49488e78c7f728459b24fd352943835fa1186b3bc84fac76" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
