class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.2005"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2005/cybara-v1.0.2005-darwin-arm64-cli"; sha256 "6b33f82f6243686b5ed7eab6c6ae6cc7e5bfa87086f3ecf8f249fde76022881b" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2005/cybara-v1.0.2005-darwin-x64-cli"; sha256 "897095f9b23fc8233d93007369f3787a646cf149b3f8a792ab5c54bb8da42e85" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2005/cybara-v1.0.2005-linux-arm64-cli"; sha256 "fcb15a45cf2704298a60b91229a7f3586d033b0ca5b169b3a743dbf49f8fdfae" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2005/cybara-v1.0.2005-linux-x64-cli"; sha256 "5b5aa5f313a538b92aa8d7c40507371570b0b5705b3b7cb9defa30b5b46ac961" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
