import ActivityCell from "discourse/components/topic-list/item/activity-cell";
import dIcon from "discourse/helpers/d-icon";
import formatDate from "discourse/helpers/format-date";
import { i18n } from "discourse-i18n";
import LikeToggle from "./like-toggle";

const TopicMetadata = <template>
  <div class="topic-card__metadata">
    {{#if settings.show_publish_date}}
      <span class="topic-card__publish-date">
        {{i18n (themePrefix "published")}}
        {{formatDate @topic.createdAt format="medium-with-ago"}}
      </span>
    {{/if}}

    <div class="right-aligned">
      {{#if settings.show_views}}
        <span class="topic-card__views item">
          {{dIcon "eye"}}
          <span class="number">
            {{@topic.views}}
          </span>
        </span>
      {{/if}}

      {{#if settings.show_likes}}
        <span class="topic-card__likes item">
          <LikeToggle @topic={{@topic}} />
        </span>
      {{/if}}

      {{#if settings.show_reply_count}}
        <span class="topic-card__reply_count item">
          {{dIcon "comment"}}
          <span class="number">
            {{@topic.replyCount}}
          </span>
        </span>
      {{/if}}

      {{#if settings.show_activity}}
        <div class="topic-card__activity item">
          <ActivityCell @topic={{@topic}} />
        </div>
      {{/if}}
    </div>
  </div>
</template>;

export default TopicMetadata;
