class Cybara < Formula
  desc "Self-hosted, open-source AI agent platform (CLI)"
  homepage "https://cybara.ai"
  version "1.0.1703"
  license "MIT"
  on_macos do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1703/cybara-v1.0.1703-darwin-arm64-cli"; sha256 "4afd58c1b2cabcf82883fb54565389a047089724f679d4a54aaa41daa254d140" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1703/cybara-v1.0.1703-darwin-x64-cli"; sha256 "1aa0530c350ae874c00842b8ba6baf451397819b257bfc9a90efe783be8fb8f8" }
  end
  on_linux do
    on_arm { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1703/cybara-v1.0.1703-linux-arm64-cli"; sha256 "d458568bb5ce26c634b0e803d314e74c525c4aa442d9c72f23fe4ee29fdf0db6" }
    on_intel { url "https://github.com/metaspartan/cybara/releases/download/v1.0.1703/cybara-v1.0.1703-linux-x64-cli"; sha256 "e217087f98831d98eaccadb23d1afcb016cd3f4da71801d9f3cbe89b900a4e76" }
  end
  def install
    bin.install Dir["*"].first => "cybara"
  end
  test do
    assert_match "cybara", shell_output("#{bin}/cybara --help", 2)
  end
end
