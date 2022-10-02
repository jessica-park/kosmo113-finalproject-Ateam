package com.main.ateam.vo;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
public class KakaoProfile {
	private Long id;
	private String connected_at;
	private Properties properties;
	private KakaoAccount kakao_account;

	@Getter
	@Setter
	@NoArgsConstructor
	public class Properties {
		private String nickname;
		private String profile_image;
		private String thumbnail_image;
	}

	@Getter
	@Setter
	@NoArgsConstructor
	public class KakaoAccount {
		private Boolean profile_nickname_needs_agreement;
		private Boolean profile_image_needs_agreement;
		private Profile profile;
		private Boolean has_email;
		private Boolean email_needs_agreement;
		private Boolean is_email_valid;
		private Boolean is_email_verified;
		private String email;

		@Getter
		@Setter
		@NoArgsConstructor
		public class Profile {
			private String nickname;
			private String thumbnail_image_url;
			private String profile_image_url;
			private Boolean is_default_image;
		}
	} 
}
