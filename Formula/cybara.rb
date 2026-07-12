class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1360"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1360/cybara-v1.0.1360-darwin-arm64-cli"; sha256 "c0313065429cfa7bbfdedaa8f8c7a0eb96b148d6ce67db4879f4c96c65c933d9" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1360/cybara-v1.0.1360-darwin-x64-cli"; sha256 "afb71b0ab37463ebc7442a93019ef2592215b89bcb7bec7f5658e7bce6b74afa" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1360/cybara-v1.0.1360-linux-arm64-cli"; sha256 "5299152259df2cdfe3b1ce75ef07f796c3bbae1578fd51492dea574e50ec27f4" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1360/cybara-v1.0.1360-linux-x64-cli"; sha256 "05bb5ddcf1a877d8a6b387dae723f0e113054cca232edba9c14f70de22f46f85" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
