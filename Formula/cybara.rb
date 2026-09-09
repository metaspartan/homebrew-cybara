class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.2332"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2332/cybara-v1.0.2332-darwin-arm64-cli"; sha256 "6b830d54f6808d6f43f46c42edb45751fa8f6a23d887c7198e2c80a017309290" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2332/cybara-v1.0.2332-darwin-x64-cli"; sha256 "31680a5e6f4401e549e7d3a298d73bf2da399ad3b403a2f9775018330775c8fb" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2332/cybara-v1.0.2332-linux-arm64-cli"; sha256 "8ce7304bdc200f6fe575f47a0aae39896511fc1e28b38511f5c253d37cbc80ea" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2332/cybara-v1.0.2332-linux-x64-cli"; sha256 "71da052a72156dccd4fdc8753a4d1f473af39556789d9f630d88a3cecbd1ed98" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
