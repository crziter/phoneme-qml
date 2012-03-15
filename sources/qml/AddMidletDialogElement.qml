/*******************************************************************************
*                                                                              *
*  Midlet installation dialog element implementation.                          *
*                                                                              *
*  Copyright (C) 2012 Kirill Chuvilin.                                         *
*  All rights reserved.                                                        *
*  Contact: Kirill Chuvilin (kirill.chuvilin@gmail.com, kirik-ch.ru)           *
*                                                                              *
*  This file is part of the phoneME QML project.                               *
*                                                                              *
*  $QT_BEGIN_LICENSE:GPL$                                                      *
*  You may use this file under the terms of the GNU General Public License     *
*  as published by the Free Software Foundation; version 3 of the License.     *
*                                                                              *
*  This file is distributed in the hope that it will be useful,                *
*  but WITHOUT ANY WARRANTY; without even the implied warranty of              *
*  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the                *
*  GNU General Public License for more details.                                *
*                                                                              *
*  You should have received a copy of the GNU General Public License           *
*  along with this package; if not, write to the Free Software                 *
*  Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.   *
*  $QT_END_LICENSE$                                                            *
*                                                                              *
*******************************************************************************/

import Qt 4.7
import "QKit"

QKitItem {
    id: addMidletDialogElement

    property url source // file url
    property string label // label of file

    signal buttonClicked() // on button clicked

    height: 0.1 * width

    QKitDialogButton {
        anchors.left: parent.left
        anchors.verticalCenter: parent.verticalCenter
        width: 0.2 * parent.width
        height: parent.height
        text: addMidletDialogElement.label
        onClicked: addMidletDialogElement.buttonClicked()
    }
    QKitDialogText {
        anchors.right: parent.right
        anchors.verticalCenter: parent.verticalCenter
        width: 0.75 * parent.width
        font.pixelSize: 0.5 * parent.height
        clip: true
        text: addMidletDialogElement.source != "file:" ? addMidletDialogElement.source : "..."
        horizontalAlignment: Text.AlignHCenter
        elide: Text.ElideLeft
    }
}
