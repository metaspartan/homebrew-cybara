class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.2555"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2555/cybara-v1.0.2555-darwin-arm64-cli"; sha256 "aa4d4beb494c6c158fb64e9682d8e653dc68613d8df19ac3ab6985658bbcf4e4" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2555/cybara-v1.0.2555-darwin-x64-cli"; sha256 "db82b8cc2647394928b2f32128ec4b56d223638c92b8dc8b29e600875102c892" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2555/cybara-v1.0.2555-linux-arm64-cli"; sha256 "4ae5a19d7f4f252013850a6389b7617d72654fe8732aa69107069bad986958c4" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.2555/cybara-v1.0.2555-linux-x64-cli"; sha256 "99e95ce2b64a377edd08a72469cd050071c0a8d90e5437ce63f132dfa140d7b5" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
