class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1436"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1436/cybara-v1.0.1436-darwin-arm64-cli"; sha256 "1da4f1fb94351ac5116becc3c92eb3a5509863fe613f6f3534e6bd90b4f6afe8" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1436/cybara-v1.0.1436-darwin-x64-cli"; sha256 "0b4f83442249722bb651a1cc62f12ee28aefb84ad118c6e1c133f1f898d1c47a" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1436/cybara-v1.0.1436-linux-arm64-cli"; sha256 "e6a620196a14c0e96afe96e02cbdb9fbd41d8e7328b3bf46c30a53c19e6821cc" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1436/cybara-v1.0.1436-linux-x64-cli"; sha256 "3569f8101aa5290d48b0ba71b566109c349b887b2505fa2726a32e11820dedba" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
