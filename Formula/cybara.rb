class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1439"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1439/cybara-v1.0.1439-darwin-arm64-cli"; sha256 "4d1b96dbc007ca44233e109b9d14a0d5ef7ed848cf6e9af733a5d632fafcc83f" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1439/cybara-v1.0.1439-darwin-x64-cli"; sha256 "5fd69899f0c747e57adbe83b909d616d25a17d4609f588a3a1b15a547e8215d3" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1439/cybara-v1.0.1439-linux-arm64-cli"; sha256 "5ca4ead4ad00eb26a537a9afb49078b702cf4856f33db81c66879a347e3e3b68" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1439/cybara-v1.0.1439-linux-x64-cli"; sha256 "d0a15bf8c297eb74ed8f6ade4a0700addf49f2076215274786c1172743deb550" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
