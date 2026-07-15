class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1605"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1605/cybara-v1.0.1605-darwin-arm64-cli"; sha256 "00abfdef23baf4fe22f9fa038c04857e8d62ee447d58b47a69357c52a63221e1" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1605/cybara-v1.0.1605-darwin-x64-cli"; sha256 "a1e96322fd26d61b262627e8d25064f2ad71c8863701f5380b34d12e30ec61e2" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1605/cybara-v1.0.1605-linux-arm64-cli"; sha256 "dcee5346db55a33a835cacf8464c76c15b07b2140ad5e259ce538c69097c424b" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1605/cybara-v1.0.1605-linux-x64-cli"; sha256 "8bbec075eae60463921f245c3bcb966db56bd867fbd1079d08867bd7b4d9e1b8" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
