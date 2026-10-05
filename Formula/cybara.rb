class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.2491"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2491/cybara-v1.0.2491-darwin-arm64-cli"; sha256 "c0c700314506091f7e52ccb380dcb637d8b112272a3fd476101080becbe18fd1" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2491/cybara-v1.0.2491-darwin-x64-cli"; sha256 "29b6f9f6958e250d27642af133801f02678ec579ceeb2d8375dfc5cab348ac86" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2491/cybara-v1.0.2491-linux-arm64-cli"; sha256 "6ef13d3b73925300a09daa2dc7851be5403ed2ec2934f0e2e59a88734e2d4914" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2491/cybara-v1.0.2491-linux-x64-cli"; sha256 "9ac0067f14d86fb09358f77a73b3519e3be59b3cb2ffeafab0f6db3bb090ba9d" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
