#ifndef COMMENT_H_
#define COMMENT_H_

#include "common/String.h"

class SaveComment
{
public:
	int authorID;
	ByteString authorName;
	ByteString authorNameFormatted;
	String comment, formattedTimestamp;
	SaveComment(int userID, ByteString username, ByteString usernameFormatted, String commentText, String formattedTimestamp):
			authorID(userID), authorName(username), authorNameFormatted(usernameFormatted), comment(commentText),
			formattedTimestamp(formattedTimestamp)
	{
	}
	SaveComment(const SaveComment & comment):
			authorID(comment.authorID), authorName(comment.authorName),
			authorNameFormatted(comment.authorNameFormatted), comment(comment.comment),
			formattedTimestamp(comment.formattedTimestamp)
	{
	}
	SaveComment(const SaveComment * comment):
			authorID(comment->authorID), authorName(comment->authorName),
			authorNameFormatted(comment->authorNameFormatted), comment(comment->comment),
			formattedTimestamp(comment->formattedTimestamp)
	{
	}
};


#endif /* COMMENT_H_ */
