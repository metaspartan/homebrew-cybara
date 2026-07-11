class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1222"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1222/cybara-v1.0.1222-darwin-arm64-cli"; sha256 "eb2c8ead79709338994648e82399d5bc323b5be69ae8fa97b8f650b6e659f088" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1222/cybara-v1.0.1222-darwin-x64-cli"; sha256 "660d8313a9f6e2c15bbd36fe30b681e2ef11e7b9d727f0abac19c491138dfbd1" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1222/cybara-v1.0.1222-linux-arm64-cli"; sha256 "fd2d81f88258deafadba0713afe1aa13593591a780451b149046e50d71e0ccd4" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1222/cybara-v1.0.1222-linux-x64-cli"; sha256 "d58671767ab9e984aab7ad0fef38e91e85c81fcb773aa5a820372b99b7ee7511" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
