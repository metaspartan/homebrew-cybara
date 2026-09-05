class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.2281"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2281/cybara-v1.0.2281-darwin-arm64-cli"; sha256 "1eaf5dcc296557aa58118175e4c37f4fccf63d1ca3fab1ed621e4640f176d8ef" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2281/cybara-v1.0.2281-darwin-x64-cli"; sha256 "3ea9e40220988873f4db50bf6fa6a2e2a64e072f378ffd5dac3c89d16813fa67" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2281/cybara-v1.0.2281-linux-arm64-cli"; sha256 "4416c34c14d1becb0fd55435856b948a26e445a1dca861b8623884193e3f5dad" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2281/cybara-v1.0.2281-linux-x64-cli"; sha256 "f3cb06b2dae281b05eb465ab7356c0fcc10dda2edfb543256bed2632220be7a6" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
